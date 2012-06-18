class UClassifyClassifier
  def initialize (classifier_name,text,username=nil)
    @classifier_name = classifier_name
    @text = text
    @username = username
  end
  
  def to_xml_node xml_document
    classifier_node = Nokogiri::XML::Node.new('classify',xml_document)
    classifier_node['id'] = UClassifyUtils.string_to_id(@classifier_name)
    classifier_node['classifierName'] = @classifier_name
    classifier_name['username'] = @username unless @username.nil?
    classifier_node['textId'] = UClassifyUtils.string_to_id(@text)
    classifier_node
  end
end