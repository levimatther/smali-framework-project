.class public Lcom/android/incallui/sessiondata/MultimediaFragment;
.super Landroidx/fragment/app/Fragment;
.source "MultimediaFragment.java"

# interfaces
.implements Lcom/android/incallui/sessiondata/AvatarPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;
    }
.end annotation


# static fields
.field private static final ARG_IMAGE:Ljava/lang/String; = "image"

.field private static final ARG_INTERACTIVE:Ljava/lang/String; = "interactive"

.field private static final ARG_IS_SPAM:Ljava/lang/String; = "is_spam"

.field private static final ARG_LOCATION:Ljava/lang/String; = "location"

.field private static final ARG_SHOW_AVATAR:Ljava/lang/String; = "show_avatar"

.field private static final ARG_SUBJECT:Ljava/lang/String; = "subject"


# instance fields
.field private avatarImageView:Landroid/widget/ImageView;

.field private isSpam:Z

.field private showAvatar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/dialer/multimedia/MultimediaData;ZZZ)Lcom/android/incallui/sessiondata/MultimediaFragment;
    .locals 6

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/android/dialer/multimedia/MultimediaData;->getLocation()Landroid/location/Location;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/sessiondata/MultimediaFragment;->newInstance(Ljava/lang/String;Landroid/net/Uri;Landroid/location/Location;ZZZ)Lcom/android/incallui/sessiondata/MultimediaFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/net/Uri;Landroid/location/Location;ZZZ)Lcom/android/incallui/sessiondata/MultimediaFragment;
    .locals 2

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "subject"

    .line 89
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "image"

    .line 90
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "location"

    .line 91
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "interactive"

    .line 92
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "show_avatar"

    .line 93
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "is_spam"

    .line 94
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    new-instance p0, Lcom/android/incallui/sessiondata/MultimediaFragment;

    invoke-direct {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;-><init>()V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public getAvatarImageView()Landroid/widget/ImageView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->avatarImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAvatarSize()I
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "show_avatar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->showAvatar:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_spam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->isSpam:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 111
    iget-boolean p3, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->isSpam:Z

    const-string v0, "MultimediaFragment.onCreateView"

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show spam layout"

    .line 112
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c00a1

    .line 113
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getImageUri()Landroid/net/Uri;

    move-result-object p3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v1

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 118
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getLocation()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/maps/MapsComponent;->get(Landroid/content/Context;)Lcom/android/incallui/maps/MapsComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/maps/MapsComponent;->getMaps()Lcom/android/incallui/maps/Maps;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/maps/Maps;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_4

    if-eqz v3, :cond_3

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show text, image, location layout"

    .line 122
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0099

    .line 123
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show image, location layout"

    .line 126
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0095

    .line 127
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v3, :cond_5

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show text, location layout"

    .line 130
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0097

    .line 131
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show location layout"

    .line 133
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0093

    .line 134
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p3, :cond_8

    if-eqz v3, :cond_7

    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show text, image layout"

    .line 138
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0098

    .line 139
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_7
    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show image layout"

    .line 141
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0094

    .line 142
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_8
    new-array p3, v1, [Ljava/lang/Object;

    const-string v2, "show text layout"

    .line 145
    invoke-static {v0, v2, p3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p3, 0x7f0c0096

    .line 146
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 152
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09005c

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 159
    :cond_0
    iget-boolean p2, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->isSpam:Z

    if-eqz p2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getLocation()Landroid/location/Location;

    move-result-object p2

    if-nez p2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getImageUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getSubject()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0902c3

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0801d3

    .line 164
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f0902c4

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f110464

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const p2, 0x7f09005f

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p2, 0x7f09005e

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 174
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/sessiondata/MultimediaFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/sessiondata/MultimediaFragment$1;-><init>(Lcom/android/incallui/sessiondata/MultimediaFragment;Landroid/view/View;)V

    .line 177
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 203
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 204
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_3
    const p2, 0x7f09005d

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/maps/MapsComponent;->get(Landroid/content/Context;)Lcom/android/incallui/maps/MapsComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/maps/MapsComponent;->getMaps()Lcom/android/incallui/maps/Maps;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/maps/Maps;->createStaticMapFragment(Landroid/location/Location;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/incallui/sessiondata/MultimediaFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 213
    invoke-virtual {v1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 214
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_4
    const p2, 0x7f09005b

    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->avatarImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    .line 218
    iget-boolean p2, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->showAvatar:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    :cond_5
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :cond_6
    const-class p1, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;

    invoke-static {p0, p1}, Lcom/android/dialer/common/FragmentUtils;->getParent(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;

    if-eqz p1, :cond_7

    .line 223
    invoke-interface {p1, p0}, Lcom/android/incallui/sessiondata/MultimediaFragment$Holder;->updateAvatar(Lcom/android/incallui/sessiondata/AvatarPresenter;)V

    :cond_7
    return-void
.end method

.method public shouldShowAnonymousAvatar()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/incallui/sessiondata/MultimediaFragment;->showAvatar:Z

    return v0
.end method
