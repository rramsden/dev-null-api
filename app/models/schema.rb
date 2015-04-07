class Schema
  def initialize(schema_path)
    @schema = JSON.parse(Prmd.combine(
      File.join(schema_path, "schemata"),
      meta: File.join(schema_path, "meta.json")
    ).to_json)
  end

  def validate
    Prmd.verify(@schema)
  end

  def to_h
    @schema
  end

  def schema
    @schema
  end

  def to_json
    JSON.pretty_generate(@schema)
  end
end
