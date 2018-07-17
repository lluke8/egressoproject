json.extract! student, :id, :nome, :matricula, :senha, :perfil_publico, :homologado, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
