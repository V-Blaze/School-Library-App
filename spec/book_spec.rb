require_relative '../book'

describe Book do
    describe '#new' do
        it 'creates a new book instance' do
            book = Book.new('Chinue Achebe', 'Things fall apart')

            expect(book).to be_instance_of(Book)
        end

        it 'creates a new book instance' do
            expect { Book.new('Things fall apart')  }.to raise_error(ArgumentError)
        end
    end

    describe '#title, #author' do
        before :each do
            @book = Book.new('Chinue Achebe', 'Things fall apart')
        end

        it 'Has the correct title' do

            expect(@book.title).to eql('Things fall apart')
        end

        it 'Has the correct Author' do
            expect(@book.author).to eql('Chinue Achebe')
        end
    end
end