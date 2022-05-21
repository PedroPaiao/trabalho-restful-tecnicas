class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :update, :destroy]
  
  def index
    @alunos = Aluno.all.page(params[:pagina] || 1).per(params[:limite] || 10)
    render json: @alunos, status: :ok
  end

  def show
    if @aluno.present?
      render json: @aluno, status: :ok
    else
      render json: { mensagem: "Não encontrado" }, status: 404
    end
  end

  def create
    @aluno = Aluno.create(aluno_params.merge(registrado_em: DateTime.now))


    if @aluno.persisted?
      render json: @aluno, status: :created
    else
      render json: @aluno.errors.messages, status: 400
    end
  end
  
  def update
    if @aluno.update(update_params)
      render json: @aluno, status: :ok
    else
      render json: @aluno.errors.messages, status: 400
    end

  end

  def destroy
    if @aluno.present?
      if @aluno.destroy
        render json: { mensagem: "Deletado com sucesso." }, status: :ok
      else
        render json: @aluno.errors.messages, status: 422
      end
    else
      render json: { mensagem: "Não encontrado" }, status: 404
    end

  end

  def update_alunos
    render json: { mensagem: 'Ação não permitida' }, status: 405
  end

  def destroy_alunos
    render json: { mensagem: 'Ação não permitida' }, status: 405
  end

  def post_some_aluno
    render json: { mensagem: 'Ação não permitida' }, status: 405
  end

  private

  def aluno_params
    params.permit(:nome, :rga, :curso)
  end

  def update_params
    params.permit(:nome, :rga, :curso, :registrado_em, :situacao)
  end

  def set_aluno
    @aluno = Aluno.find_by(id: params[:id])
  end
end