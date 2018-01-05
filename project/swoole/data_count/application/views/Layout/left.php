<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <?php foreach ($navleft as $value): if ($value['show']): ?>
                <li class="layui-nav-item">
                    <a href=" <?php echo $value['url'];?>">
                        <?php echo $value['title'];?>
                    </a>
                </li>
            <?php endif;endforeach; ?>
        </ul>
    </div>
</div>