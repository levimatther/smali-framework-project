.class public Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "CallComposerPagerAdapter.java"


# static fields
.field public static final INDEX_CAMERA:I = 0x0

.field public static final INDEX_GALLERY:I = 0x1

.field public static final INDEX_MESSAGE:I = 0x2


# instance fields
.field private final messageComposerCharLimit:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 35
    iput p2, p0, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->messageComposerCharLimit:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 48
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    const/4 p1, 0x0

    return-object p1

    .line 42
    :cond_0
    iget p1, p0, Lcom/android/dialer/callcomposer/CallComposerPagerAdapter;->messageComposerCharLimit:I

    invoke-static {p1}, Lcom/android/dialer/callcomposer/MessageComposerFragment;->newInstance(I)Lcom/android/dialer/callcomposer/MessageComposerFragment;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/dialer/callcomposer/GalleryComposerFragment;->newInstance()Lcom/android/dialer/callcomposer/GalleryComposerFragment;

    move-result-object p1

    return-object p1

    .line 46
    :cond_2
    new-instance p1, Lcom/android/dialer/callcomposer/CameraComposerFragment;

    invoke-direct {p1}, Lcom/android/dialer/callcomposer/CameraComposerFragment;-><init>()V

    return-object p1
.end method
