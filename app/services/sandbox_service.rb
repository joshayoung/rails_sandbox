class SandboxService
  def self.dynamically_build(values:)
    all = []
    values&.each { |val| all.push(OpenStruct.new(id: val)) }
    OpenStruct.new(type: "builder", products: all)
  end
end
