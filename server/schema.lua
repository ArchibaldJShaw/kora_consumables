KoraConsumablesSchema = {
    {
        name = 'kora_consumables_items',
        columns = {
            { name = 'class', type = 'varchar(32)' },
            { name = 'item', type = 'varchar(64)' },
            { name = 'data', type = 'longtext' },
            { name = 'enabled', type = 'tinyint', default = 1 },
        },
        primary = { 'class', 'item' },
    },
    {
        name = 'kora_consumables_classes',
        columns = {
            { name = 'class', type = 'varchar(32)' },
            { name = 'data', type = 'longtext' },
            { name = 'enabled', type = 'tinyint', default = 1 },
        },
        primary = { 'class' },
    },
}
