<jsp:include page="header.jsp"/>

<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Department tree</li>
</ul>

<h1 align="center">组织机构树</h1>
<hr/>
<h4 class="m-t-none">Nestable list
    <button id="nestable-menu" class="btn btn-xs btn-default active" data-toggle="class:show"><i
            class="fa fa-plus text"></i> <span class="text">Expand All</span> <i class="fa fa-minus text-active"></i>
        <span class="text-active">Collapse All</span></button>
</h4>
<div class="row m-b">
    <div class="col-sm-4">
        <div class="dd" id="nestable1">
            <ol class="dd-list">
                <li class="dd-item" data-id="1">
                    <div class="dd-handle">管理层</div>
                </li>
                <li class="dd-item" data-id="2">
                    <div class="dd-handle">董事长</div>
                    <ol class="dd-list">
                        <li class="dd-item" data-id="5">
                            <div class="dd-handle">总经理</div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="6">
                                    <div class="dd-handle">副总经理</div>
                                </li>
                                <li class="dd-item" data-id="7">
                                    <div class="dd-handle">副总经理</div>
                                </li>
                                <li class="dd-item" data-id="8">
                                    <div class="dd-handle">副总经理</div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </li>
                <li class="dd-item" data-id="9">
                    <div class="dd-handle">&nbsp;</div>
                </li>
            </ol>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="dd" id="nestable2">
            <ol class="dd-list">
                <li class="dd-item" data-id="1">
                    <div class="dd-handle">人力资源部</div>
                </li>
                <li class="dd-item" data-id="2">
                    <div class="dd-handle">部门经理</div>
                    <ol class="dd-list">
                        <li class="dd-item" data-id="5">
                            <div class="dd-handle">部门总监</div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="6">
                                    <div class="dd-handle">招聘中心</div>
                                </li>
                                <li class="dd-item" data-id="7">
                                    <div class="dd-handle">管理处</div>
                                </li>
                                <li class="dd-item" data-id="8">
                                    <div class="dd-handle">结算处</div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </li>
                <li class="dd-item" data-id="9">
                    <div class="dd-handle">&nbsp;</div>
                </li>
            </ol>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="dd" id="nestable3">
            <ol class="dd-list">
                <li class="dd-item" data-id="1">
                    <div class="dd-handle">技术部</div>
                </li>
                <li class="dd-item" data-id="2">
                    <div class="dd-handle">部门经理</div>
                    <ol class="dd-list">
                        <li class="dd-item" data-id="5">
                            <div class="dd-handle">部门总监</div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="6">
                                    <div class="dd-handle">研发中心</div>
                                </li>
                                <li class="dd-item" data-id="7">
                                    <div class="dd-handle">质检科</div>
                                </li>
                                <li class="dd-item" data-id="8">
                                    <div class="dd-handle">工程部</div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </li>
                <li class="dd-item" data-id="9">
                    <div class="dd-handle">&nbsp;</div>
                </li>
            </ol>
        </div>
    </div>

</div>
<div class="row m-b">
    <div class="col-sm-4">
        <div class="dd" id="nestable6">
            <ol class="dd-list">
                <li class="dd-item" data-id="1">
                    <div class="dd-handle">新闻部</div>
                </li>
                <li class="dd-item" data-id="2">
                    <div class="dd-handle">部门经理</div>
                    <ol class="dd-list">
                        <li class="dd-item" data-id="5">
                            <div class="dd-handle">部门总监</div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="6">
                                    <div class="dd-handle">发布处</div>
                                </li>
                                <li class="dd-item" data-id="7">
                                    <div class="dd-handle">审核处</div>
                                </li>
                                <li class="dd-item" data-id="8">
                                    <div class="dd-handle">调查处</div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </li>
                <li class="dd-item" data-id="9">
                    <div class="dd-handle">&nbsp;</div>
                </li>
            </ol>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="dd" id="nestable10">
            <ol class="dd-list">
                <li class="dd-item" data-id="1">
                    <div class="dd-handle">文档管理部</div>
                </li>
                <li class="dd-item" data-id="2">
                    <div class="dd-handle">部门经理</div>
                    <ol class="dd-list">
                        <li class="dd-item" data-id="5">
                            <div class="dd-handle">部门总监</div>
                            <ol class="dd-list">
                                <li class="dd-item" data-id="6">
                                    <div class="dd-handle">管理处</div>
                                </li>
                                <li class="dd-item" data-id="7">
                                    <div class="dd-handle">采购处</div>
                                </li>
                            </ol>
                        </li>
                    </ol>
                </li>
                <li class="dd-item" data-id="9">
                    <div class="dd-handle">&nbsp;</div>
                </li>
            </ol>
        </div>
    </div>

</div>


<jsp:include page="footer.jsp"/>