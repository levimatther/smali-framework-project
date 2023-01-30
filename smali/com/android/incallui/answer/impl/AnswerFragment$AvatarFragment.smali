.class public Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;
.super Landroidx/fragment/app/Fragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/sessiondata/AvatarPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/answer/impl/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarFragment"
.end annotation


# instance fields
.field private avatarImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1515
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;->avatarImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAvatarSize()I
    .locals 2

    .line 1541
    invoke-virtual {p0}, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0091

    const/4 v0, 0x0

    .line 1523
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1528
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0900eb

    .line 1529
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/incallui/answer/impl/AnswerFragment$AvatarFragment;->avatarImageView:Landroid/widget/ImageView;

    .line 1530
    const-class p1, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParentUnsafe(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;

    invoke-interface {p1, p0}, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;->updateAvatar(Lcom/android/incallui/sessiondata/AvatarPresenter;)V

    return-void
.end method

.method public shouldShowAnonymousAvatar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
