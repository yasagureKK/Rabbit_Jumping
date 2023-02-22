//=============================================================================
// ライト処理 [light.h]
// Author : 草刈 翔
//=============================================================================
#ifndef _LIGHT_H_
#define _LIGHT_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "main.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************
#define MAX_LIGHT (3)	//ライトの最大数

//*****************************************************************************
// 構造体の定義
//*****************************************************************************

//*****************************************************************************
// クラスの定義
//*****************************************************************************
class CLight
{
public:
	CLight();													// コンストラクタ
	~CLight();													// デストラクタ
	HRESULT Init(D3DXVECTOR3 vecDir, D3DXVECTOR3 pos);			// 初期化処理
	void Uninit(void);											// 終了処理
	void Update(void);											// 更新処理
	static CLight *Create(D3DXVECTOR3 vecDir, D3DXVECTOR3 pos);	// 生成処理

private:
	D3DLIGHT9 m_light;											// ライト
	int m_nCnt;													// 何番目のライトか
	static int m_nNum;											// ライトの総数
};

#endif // _LIGHT_H_