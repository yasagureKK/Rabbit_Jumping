//=============================================================================
// オブジェクト処理 [scene.h]
// Author : 草刈 翔
//=============================================================================
#ifndef _SCENE_H_
#define _SCENE_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "main.h"

//*****************************************************************************
// クラスの定義
//*****************************************************************************
class CScene
{
public:
	// 描画順の種類(低いものから描画)
	typedef enum
	{
		PRIORITY_NONE = 0,			// なし
		PRIORITY_PLAYER,			// プレイヤー
		PRIORITY_MODEL,				// モデル
		PRIORITY_EFFECT,			// エフェクト
		PRIORITY_UI,				// UI
		PRIORITY_PAUSE,				// ポーズ
		PRIORITY_FADE,				// フェード
		PRIORITY_MAX
	} PRIORITY;

	// オブジェクトの種類
	typedef enum
	{
		OBJECT_TYPE_NONE = 0,			// なし
		OBJECT_TYPE_PLAYER,				// プレイヤー
		OBJECT_TYPE_MODEL,				// モデル
		OBJECT_TYPE_ENEMY,				// 敵
		OBJECT_TYPE_UI,					// UI
		OBJECT_TYPE_MAX
	} OBJECT_TYPE;

	CScene(int nPriority = PRIORITY_NONE);		// コンストラクタ
	virtual ~CScene();							// デストラクタ
	virtual HRESULT Init(D3DXVECTOR3 pos,
		D3DXVECTOR3 size) = 0;					// 初期化処理
	virtual void Uninit(void) = 0;				// 終了処理
	virtual void Update(void) = 0;				// 更新処理
	virtual void Draw(void) = 0;				// 描画処理
	static void ReleaseAll(void);				// 全てのオブジェクトの開放処理
	static void UpdateAll(void);				// 全てのオブジェクトの更新処理
	static void DrawAll(void);					// 全てのオブジェクトの描画処理

	CScene *GetObjNext(CScene *pObject);		// 引数のオブジェクトの次のオブジェクトの情報取得処理
	static CScene *GetTopObj(int nPriority);	// 引数のプライオリティの先頭オブジェクトの取得処理

	void SetPos(D3DXVECTOR3 pos);				// 位置設定処理
	D3DXVECTOR3 GetPos(void);					// 位置取得処理
	void SetPosOld(D3DXVECTOR3 posOld);			// 1フレーム前の位置設定処理
	D3DXVECTOR3 GetPosOld(void);				// 1フレーム前の位置取得処理
	void SetSize(D3DXVECTOR3 size);				// サイズ設定処理
	D3DXVECTOR3 GetSize(void);					// サイズ取得処理
	void SetObjType(OBJECT_TYPE objType);		// オブジェクトの種類の設定処理
	OBJECT_TYPE GetObjType(void);				// オブジェクトの種類の取得処理

private:
	static CScene *m_pTop[PRIORITY_MAX];		// 先頭のオブジェクトのポインタ
	static CScene *m_pCur[PRIORITY_MAX];		// 最後尾のオブジェクトのポインタ
	CScene *m_pPrev;							// 前のオブジェクトのポインタ
	CScene *m_pNext;							// 次のオブジェクトのポインタ
	int m_nPriority;							// 描画優先順位の番号
	OBJECT_TYPE m_objType;						// オブジェクトの種類
	D3DXVECTOR3 m_pos;							// 位置
	D3DXVECTOR3 m_posOld;						// 1フレーム前の位置
	D3DXVECTOR3 m_size;							// サイズ
	bool m_bDeath;								// 死亡フラグ

protected:
	void Release();								// 単体の開放処理
};

#endif // _SCENE_H_