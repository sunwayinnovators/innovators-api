### This file describe all the setup, migration and hot-fixes required for the extensions gem.

Explicitly add version header to all generated migrations. (Rails 5)

> `...ActiveRecord` to `...ActiveRecord[5.2]`

##### [rswag](https://github.com/domaindrivendev/rswag)
`rails g rswag:install`

##### [ActAsTaggableOn Migration Generate](https://github.com/mbleigh/acts-as-taggable-on)

`rake acts_as_taggable_on_engine:install:migrations`

Find file: `..._acts_as_taggable_on_migration.acts_as_taggable_on_engine`,
comment the followings line:
> `add_index :taggings, :tag_id`

##### [Carrierwave](https://github.com/carrierwaveuploader/carrierwave)