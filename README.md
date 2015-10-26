# Entities to Models/Migrations instructions

Emulate the rails generate model command

    ```
    format: bin/rails generate model Model_name [Field_name:field_type, ...]
    example: bin/rails generate model EInfo title:string description:string image_name:string
    (don't include any keys, primary are automatic, and foreign is automatic through constraints
    '''
    
Then create the constraints using http://guides.rubyonrails.org/association_basics.html as reference
    
example: 
    
    ```
    EInfo < ...
    has_many :e_reviews, dependent: :destroy
    has_many :e_tags, dependent: :destroy
    has_one :e_category
    ```

# Setup Instructions

Install RVM

    https://rvm.io/rvm/install

Use RVM to download ruby version 2.2.2, then set it as default in your bash profile

Then, inside Ruby, run

    gem install rails
  
Install PostgreSQL

    https://help.ubuntu.com/community/PostgreSQL
  
Use the rails command to generate the PostgreSQL database automatically, which is setup already in rails

    rake db:create

Then run the following command to have rails copy all existing model/migrations into the database

    rake db:migrate
  
Then create Models for the Entity tables

    example: bin/rails generate model EInfo title:string description:string
    (don't include foreign keys yet)
  
    read more on the basics here: http://guides.rubyonrails.org/getting_started.html
  
When you generate a model, it will create a migration in db/migrate/thenewmigration and it will create a model file in app/model/thenewmodel

    - model is where you will place contraints
     guide: http://guides.rubyonrails.org/association_basics.html


    - some of the constraints will require some modifications to the migrations file (namely, belongs_to)
