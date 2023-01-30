.class public Lcom/android/dialer/callcomposer/GalleryComposerFragment;
.super Lcom/android/dialer/callcomposer/CallComposerFragment;
.source "GalleryComposerFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dialer/callcomposer/CallComposerFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final INSERTED_IMAGES_KEY:Ljava/lang/String; = "inserted_images"

.field private static final IS_COPY_KEY:Ljava/lang/String; = "is_copy"

.field private static final RESULT_LOAD_IMAGE:I = 0x1

.field private static final RESULT_OPEN_SETTINGS:I = 0x2

.field private static final SELECTED_DATA_KEY:Ljava/lang/String; = "selected_data"


# instance fields
.field private adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

.field private allowPermission:Landroid/view/View;

.field private copyAndResizeImage:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private cursorLoader:Landroidx/loader/content/CursorLoader;

.field private executorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

.field private galleryGridView:Landroid/widget/GridView;

.field private insertedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/dialer/callcomposer/GalleryGridItemData;",
            ">;"
        }
    .end annotation
.end field

.field private permissionView:Landroid/view/View;

.field private permissions:[Ljava/lang/String;

.field private selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

.field private selectedDataIsCopy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/CallComposerFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;

    invoke-direct {v0}, Lcom/android/dialer/common/concurrent/DefaultDialerExecutorFactory;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->executorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 74
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissions:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onActivityCreated$1(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "GalleryComposerFragment.onFailure"

    const-string v1, "data preparation failed"

    .line 143
    invoke-static {v0, v1, p0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static newInstance()Lcom/android/dialer/callcomposer/GalleryComposerFragment;
    .locals 1

    .line 83
    new-instance v0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    invoke-direct {v0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;-><init>()V

    return-object v0
.end method

.method private prepareDataForAttachment(Landroid/content/Intent;)V
    .locals 2

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.STREAM"

    .line 296
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 306
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->copyAndResizeImage:Lcom/android/dialer/common/concurrent/DialerExecutor;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;Z)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    .line 234
    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy:Z

    .line 235
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    invoke-virtual {p2, p1}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getListener()Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/dialer/callcomposer/CallComposerFragment$CallComposerListener;->composeCall(Lcom/android/dialer/callcomposer/CallComposerFragment;)V

    :cond_0
    return-void
.end method

.method private setupGallery()V
    .locals 3

    .line 150
    new-instance v0, Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    .line 151
    iget-object v1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->galleryGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method


# virtual methods
.method public clearComposer()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;Z)V

    return-void
.end method

.method public getCursorLoader()Landroidx/loader/content/CursorLoader;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->cursorLoader:Landroidx/loader/content/CursorLoader;

    return-object v0
.end method

.method public getGalleryData()Lcom/android/dialer/callcomposer/GalleryGridItemData;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    return-object v0
.end method

.method public getGalleryGridView()Landroid/widget/GridView;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->galleryGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public synthetic lambda$onActivityCreated$0$GalleryComposerFragment(Landroidx/core/util/Pair;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    iget-object v1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->insertEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 125
    invoke-super {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->executorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/callcomposer/CopyAndResizeImageWorker;

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/callcomposer/CopyAndResizeImageWorker;-><init>(Landroid/content/Context;)V

    const-string v2, "copyAndResizeImage"

    .line 129
    invoke-interface {p1, v0, v2, v1}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$8uEI4mqx0oWgg3wkbz8zfobh3vM;

    invoke-direct {v0, p0}, Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$8uEI4mqx0oWgg3wkbz8zfobh3vM;-><init>(Lcom/android/dialer/callcomposer/GalleryComposerFragment;)V

    .line 133
    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$ado5OiHlWj9iFwMRnxI2_6AAzXs;->INSTANCE:Lcom/android/dialer/callcomposer/-$$Lambda$GalleryComposerFragment$ado5OiHlWj9iFwMRnxI2_6AAzXs;

    .line 140
    invoke-interface {p1, v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onFailure(Lcom/android/dialer/common/concurrent/DialerExecutor$FailureListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->copyAndResizeImage:Lcom/android/dialer/common/concurrent/DialerExecutor;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 224
    invoke-direct {p0, p3}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->prepareDataForAttachment(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setupGallery()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->allowPermission:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissions:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/android/dialer/util/PermissionsUtil;->isFirstRequest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v2, "GalleryComposerFragment.onClick"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissions:[Ljava/lang/String;

    aget-object p1, p1, v1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Settings opened to enable permission."

    .line 187
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_SETTINGS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 189
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 190
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Storage permission requested."

    .line 183
    invoke-static {v2, v1, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_REQUESTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 185
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissions:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void

    .line 196
    :cond_2
    check-cast p1, Lcom/android/dialer/callcomposer/GalleryGridItemView;

    .line 197
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->isGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    sget-object v0, Lcom/android/dialer/callcomposer/GalleryCursorLoader;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {v0, v2}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->clearComposer()V

    goto :goto_2

    .line 206
    :cond_4
    new-instance v0, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    invoke-virtual {p1}, Lcom/android/dialer/callcomposer/GalleryGridItemView;->getData()Lcom/android/dialer/callcomposer/GalleryGridItemData;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/dialer/callcomposer/GalleryGridItemData;-><init>(Lcom/android/dialer/callcomposer/GalleryGridItemData;)V

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;Z)V

    :goto_2
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance p1, Lcom/android/dialer/callcomposer/GalleryCursorLoader;

    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dialer/callcomposer/GalleryCursorLoader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->cursorLoader:Landroidx/loader/content/CursorLoader;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c009c

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090174

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->galleryGridView:Landroid/widget/GridView;

    const p2, 0x7f090236

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p2

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DISPLAYED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p2, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "GalleryComposerFragment.onCreateView"

    const-string v0, "Permission view shown."

    .line 101
    invoke-static {p3, v0, p2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    const p3, 0x7f090234

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 103
    iget-object p3, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    const v0, 0x7f090235

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    const v2, 0x7f090054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->allowPermission:Landroid/view/View;

    .line 106
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f11024d

    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0801e5

    .line 108
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0600be

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 109
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 111
    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "selected_data"

    .line 114
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/callcomposer/GalleryGridItemData;

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    const-string p2, "is_copy"

    .line 115
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy:Z

    const-string p2, "inserted_images"

    .line 116
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setupGallery()V

    :goto_0
    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 162
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 163
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    iget-object p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->insertEntries(Ljava/util/List;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    iget-boolean p2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy:Z

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setSelected(Lcom/android/dialer/callcomposer/GalleryGridItemData;Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->adapter:Lcom/android/dialer/callcomposer/GalleryGridAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callcomposer/GalleryGridAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 266
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    iget-object v2, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    aget-object p2, p2, v1

    invoke-static {v0, p2}, Lcom/android/dialer/util/PermissionsUtil;->permissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string p2, "GalleryComposerFragment.onRequestPermissionsResult"

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 269
    array-length v2, p3

    if-lez v2, :cond_1

    aget p3, p3, v1

    if-nez p3, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_GRANTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "Permission granted."

    .line 273
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->permissionView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-direct {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->setupGallery()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p3, Lcom/android/dialer/logging/DialerImpression$Type;->STORAGE_PERMISSION_DENIED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p3}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string p3, "Permission denied."

    .line 278
    invoke-static {p2, p3, p1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 256
    invoke-super {p0, p1}, Lcom/android/dialer/callcomposer/CallComposerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    const-string v1, "selected_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy:Z

    const-string v1, "is_copy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->insertedImages:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "inserted_images"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public selectedDataIsCopy()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedDataIsCopy:Z

    return v0
.end method

.method setExecutorFactory(Lcom/android/dialer/common/concurrent/DialerExecutorFactory;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    iput-object p1, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->executorFactory:Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    return-void
.end method

.method public shouldHide()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->selectedData:Lcom/android/dialer/callcomposer/GalleryGridItemData;

    .line 246
    invoke-virtual {v0}, Lcom/android/dialer/callcomposer/GalleryGridItemData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
