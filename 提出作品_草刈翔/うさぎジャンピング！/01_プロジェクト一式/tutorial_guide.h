//=============================================================================
// ���K���[�h�̃K�C�h���� [tutorial_guide.h]
// Author : ���� ��
//=============================================================================
#ifndef _TUTORIAL_GUIDE_H_
#define _TUTORIAL_GUIDE_H_

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "scene.h"

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CUi;
class CScene2D;

//*****************************************************************************
// �N���X�̒�`
//*****************************************************************************
class CTutorialGuide : public CScene
{
public:
	CTutorialGuide(int nPriority = PRIORITY_PAUSE);						// �R���X�g���N�^
	~CTutorialGuide();													// �f�X�g���N�^
	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);					// ����������
	void Uninit(void);													// �I������
	void Update(void);													// �X�V����
	void Draw(void);													// �`�揈��
	static CTutorialGuide *Create(D3DXVECTOR3 pos, D3DXVECTOR3 size);	// ��������
	static void SetPage(int nNum);										// �y�[�W���ݒ菈��
	static int GetPage(void);											// �y�[�W���擾����
	void AdvancePage(void);												// �y�[�W��i�߂鏈��
	void AddPageAndDestroyWindow(void);									// �y�[�W��i�߁A���b�Z�[�W�E�B���h�E��j�����鏈��

private:
	void CreateMessageWindow(void);										// ���b�Z�[�W�E�B���h�E����鏈��
	CScene2D *m_pScene2D[2];											// 2D�I�u�W�F�N�g�̃|�C���^
	static int m_nNowPage;												// ���݂̃y�[�W
	bool m_bDisplay;													// �K�C�h���\�����Ă邩�ǂ���
	bool m_bDeleteDisplay;												// �K�C�h�̕\�����������ǂ���
};

#endif	// _TUTORIAL_GUIDE_H_