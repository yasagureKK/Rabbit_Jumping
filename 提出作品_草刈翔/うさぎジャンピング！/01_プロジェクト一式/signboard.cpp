//=============================================================================
// ゲーム中の看板オブジェクト生成処理 [game_signbpard.cpp]
// Author : 草刈 翔
//=============================================================================
//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "signboard.h"
#include "manager.h"
#include "texture.h"
#include "model_single.h"
#include "player.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CSignboard::CSignboard()
{
	// 変数のクリア
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_size = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	memset(&m_apModelSingle, NULL, sizeof(m_apModelSingle));
	m_nNumPlayer = 0;
}

//=============================================================================
// デストラクタ
//=============================================================================
CSignboard::~CSignboard()
{

}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CSignboard::Init(D3DXVECTOR3 pos, D3DXVECTOR3 size)
{
	m_pos = pos;
	m_size = size;

	if (m_apModelSingle == NULL)
	{
		m_apModelSingle = CModelSingle::Create(pos, D3DXVECTOR3(0.0f, 0.0f, 0.0f), CModelLoad::MODEL_TYPE_SIGNBOARD, CModelSingle::MODEL_SINGLE_TYPE_SIGNBOARD);
	}
	
	return S_OK;
}

//=============================================================================
// 終了処理
//=============================================================================
void CSignboard::Uninit(void)
{
	// オブジェクトの破棄
	Release();
}

//=============================================================================
// 更新処理
//=============================================================================
void CSignboard::Update(void)
{
	// オブジェクト情報を入れるポインタ・その情報を保存するポインタ
	CScene *pObject = NULL;
	CScene *pSaveObject = NULL;

	// 先頭のポインタを代入
	pObject = pObject->GetTopObj(CScene::PRIORITY_MODEL);

	while (pObject != NULL)
	{
		// 現在のオブジェクトのポインタを保存
		pSaveObject = pObject;

		if (pObject->GetObjType() == CScene::OBJECT_TYPE_PLAYER)
		{
			// プレイヤークラスにキャスト
			CPlayer *pPlayer = NULL;
			pPlayer = (CPlayer*)pObject;

			// 番号がプレイヤーの番号と一致していたら
			if (m_nNumPlayer == pPlayer->GetNum())
			{
				// プレイヤーの位置を取得
				D3DXVECTOR3 pos = pPlayer->GetPos();

				// 位置＋サイズの位置にプレイヤーが来たら消す
				if (pos.x > m_pos.x + m_size.x)
				{
					// 位置をずらす
					m_pos.x = m_pos.x + m_size.x * 2;

					// モデルの位置を設定
					m_apModelSingle->SetPos(m_pos);
				}
			}
		}
		// 次のオブジェクトを取得
		pObject = pSaveObject->GetObjNext(pSaveObject);
	}

}

//=============================================================================
// 描画処理
//=============================================================================
void CSignboard::Draw(void)
{

}

//=============================================================================
// 生成処理
//=============================================================================
CSignboard *CSignboard::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size, int nNumPlayer)
{
	// インスタンスの生成
	CSignboard *pSignboard = NULL;

	// ヌルチェック
	if (pSignboard == NULL)
	{
		// クラスの生成
		pSignboard = new CSignboard;
		if (pSignboard != NULL)
		{
			// 変数の初期化
			pSignboard->m_nNumPlayer = nNumPlayer;

			// 初期化処理
			pSignboard->Init(pos, size);
		}
	}

	return pSignboard;
}