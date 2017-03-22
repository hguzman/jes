json.array!(@resumes) do |resume|
  json.extract! resume, :id, :cedula, :nombre, :apellido, :direccion, :email
  json.url resume_url(resume, format: :json)
end
