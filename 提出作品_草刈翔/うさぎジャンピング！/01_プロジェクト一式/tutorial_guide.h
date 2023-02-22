//=============================================================================
// 練習モードのガイド処理 [tutorial_guide.h]
// Author : 草刈 翔
//=============================================================================
#ifndef _TUTORIAL_GUIDE_H_
#define _TUTORIAL_GUIDE_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "scene.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CUi;
class CScene2D;

//*****************************************************************************
// クラスの定義
//*****************************************************************************
class CTutorialGuide : public CScene
{
public:
	CTutorialGuide(int nPriority = PRIORITY_PAUSE);						// コンストラクタ
	~CTutorialGuide();													// デストラクタ
	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);					// 初期化処理
	void Uninit(void);													// 終了処理
	void Update(void);													// 更新処理
	void Draw(void);													// 描画処理
	static CTutorialGuide *Create(D3DXVECTOR3 pos, D3DXVECTOR3 size);	// 生成処理
	static void SetPage(int nNum);										// ページ数設定処理
	static int GetPage(void);											// ページ数取得処理
	void AdvancePage(void);												// ページを進める処理
	void AddPageAndDestroyWindow(void);									// ページを進め、メッセージウィンドウを破棄する処理

private:
	void CreateMessageWindow(void);										// メッセージウィンドウを作る処理
	CScene2D *m_pScene2D[2];											// 2Dオブジェクトのポインタ
	static int m_nNowPage;												// 現在のページ
	bool m_bDisplay;													// ガイドが表示してるかどうか
	bool m_bDeleteDisplay;												// ガイドの表示を消すかどうか
};

#endif	// _TUTORIAL_GUIDE_H_