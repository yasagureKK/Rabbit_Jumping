//=============================================================================
// �ŔI�u�W�F�N�g�������� [signbpard.h]
// Author : ���� ��
//=============================================================================
#ifndef _SIGNBOARD_H_
#define _SIGNBOARD_H_

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "scene.h"

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CModelSingle;

//*****************************************************************************
// �N���X�̒�`
//*****************************************************************************
class CSignboard : public CScene
{
public:
	CSignboard();										// �R���X�g���N�^
	~CSignboard();										// �f�X�g���N�^
	HRESULT Init(D3DXVECTOR3 pos, D3DXVECTOR3 size);		// ����������
	void Uninit(void);										// �I������
	void Update(void);										// �X�V����
	void Draw(void);										// �`�揈��
	static CSignboard *Create(D3DXVECTOR3 pos,
		D3DXVECTOR3 size, int nNumPlayer);					// ��������

private:
	D3DXVECTOR3 m_pos;										// �ʒu
	D3DXVECTOR3 m_size;										// �T�C�Y
	CModelSingle *m_apModelSingle;							// ���f��(�P��)�̃|�C���^
	int m_nNumPlayer;										// �ǂ̃v���C���[�ɑ΂�����̂�
};

#endif	// _SIGNBOARD_H_