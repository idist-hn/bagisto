<?php

return [
    'checkout' => [
        'cart' => [
            'integrity' => [
                'qty-missing'   => 'Ít nhất một sản phẩm phải có số lượng lớn hơn 1.',
            ],

            'inventory-warning' => 'Số lượng yêu cầu không có sẵn, vui lòng thử lại sau.',
            'missing-links'     => 'Các liên kết tải xuống bị thiếu cho sản phẩm này.',
            'missing-options'   => 'Các tùy chọn bị thiếu cho sản phẩm này.',
        ],
    ],

    'datagrid' => [
        'copy-of-slug'                  => 'sao-chép-:value',
        'copy-of'                       => 'Sao Chép :value',
        'variant-already-exist-message' => 'Biến thể với các tùy chọn thuộc tính tương tự đã tồn tại.',
    ],

    'response' => [
        'product-can-not-be-copied' => 'Sản phẩm loại :type không thể được sao chép',
    ],

    'sort-by'  => [
        'options' => [
            'cheapest-first'  => 'Rẻ Nhất Đầu Tiên',
            'expensive-first' => 'Đắt Nhất Đầu Tiên',
            'from-a-z'        => 'Từ A-Z',
            'from-z-a'        => 'Từ Z-A',
            'latest-first'    => 'Mới Nhất Đầu Tiên',
            'oldest-first'    => 'Cũ Nhất Đầu Tiên',
        ],
    ],

    'type'     => [
        'abstract'     => [
            'offers' => 'Mua :qty với giá :price mỗi cái và tiết kiệm :discount',
        ],

        'bundle'       => 'Gói',
        'configurable' => 'Có thể cấu hình',
        'downloadable' => 'Có thể tải xuống',
        'grouped'      => 'Nhóm',
        'simple'       => 'Đơn giản',
        'virtual'      => 'Ảo',
    ],
];
