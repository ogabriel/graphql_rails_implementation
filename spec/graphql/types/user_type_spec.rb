Rspec.describe Types::UserType do
  subject { described_class }

  it 'has and id field' do
    is_expected.to have_field(:id).of_type(!types.String)
  end

  it 'has an email field' do
    is_expected.to have_field(:email).of_type(!types.String)
  end

  it 'has an array of quotes field' do
    is_expected.to have_field(:quotes).of_type(types[Types::QuoteType])
  end
end
