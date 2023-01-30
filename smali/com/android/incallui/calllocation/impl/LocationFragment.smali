.class public Lcom/android/incallui/calllocation/impl/LocationFragment;
.super Lcom/android/incallui/baseui/BaseFragment;
.source "LocationFragment.java"

# interfaces
.implements Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/baseui/BaseFragment<",
        "Lcom/android/incallui/calllocation/impl/LocationPresenter;",
        "Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;",
        ">;",
        "Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;"
    }
.end annotation


# static fields
.field private static final ADDRESS_DELIMITER:Ljava/lang/String; = ","

.field private static final LOADING_VIEW_INDEX:I = 0x0

.field private static final LOCATION_VIEW_INDEX:I = 0x1

.field private static final TIMEOUT_MILLIS:J


# instance fields
.field private addressLine1:Landroid/widget/TextView;

.field private addressLine2:Landroid/widget/TextView;

.field private final dataTimeoutRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private hasTimeoutStarted:Z

.field private isAddressSet:Z

.field private isLocationSet:Z

.field private isMapSet:Z

.field private latLongLine:Landroid/widget/TextView;

.field private location:Landroid/location/Location;

.field private locationLayout:Landroid/view/ViewGroup;

.field private locationMap:Landroid/widget/ImageView;

.field private viewAnimator:Landroid/widget/ViewAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/incallui/calllocation/impl/LocationFragment;->TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/incallui/baseui/BaseFragment;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->handler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/incallui/calllocation/impl/-$$Lambda$LocationFragment$XfF0F-n65OEjXH9ZA5nn5v6r9_4;

    invoke-direct {v0, p0}, Lcom/android/incallui/calllocation/impl/-$$Lambda$LocationFragment$XfF0F-n65OEjXH9ZA5nn5v6r9_4;-><init>(Lcom/android/incallui/calllocation/impl/LocationFragment;)V

    iput-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->dataTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private displayWhenReady()V
    .locals 4

    .line 169
    iget-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isMapSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isAddressSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isLocationSet:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->showLocationNow()V

    goto :goto_0

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->hasTimeoutStarted:Z

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->dataTimeoutRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/incallui/calllocation/impl/LocationFragment;->TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->hasTimeoutStarted:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private launchMap()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    .line 194
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lcom/android/incallui/calllocation/impl/LocationUrlBuilder;->getShowMapIntent(Landroid/location/Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_LAUNCHED_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    :cond_0
    return-void
.end method

.method private showLocationNow()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->dataTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->viewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->viewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 181
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->viewAnimator:Landroid/widget/ViewAnimator;

    new-instance v1, Lcom/android/incallui/calllocation/impl/-$$Lambda$LocationFragment$8eIDQXUKhFUuqKMfT7mXSsEzHfs;

    invoke-direct {v1, p0}, Lcom/android/incallui/calllocation/impl/-$$Lambda$LocationFragment$8eIDQXUKhFUuqKMfT7mXSsEzHfs;-><init>(Lcom/android/incallui/calllocation/impl/LocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static updateText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/baseui/Presenter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->createPresenter()Lcom/android/incallui/calllocation/impl/LocationPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/calllocation/impl/LocationPresenter;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/incallui/calllocation/impl/LocationPresenter;

    invoke-direct {v0}, Lcom/android/incallui/calllocation/impl/LocationPresenter;-><init>()V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/baseui/Ui;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getUi()Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/calllocation/impl/LocationPresenter$LocationUi;
    .locals 0

    return-object p0
.end method

.method public synthetic lambda$new$0$LocationFragment()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationFragment.dataTimeoutRunnable"

    const-string v2, "timed out so animate any future layout changes"

    .line 73
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->locationLayout:Landroid/view/ViewGroup;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 77
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->showLocationNow()V

    return-void
.end method

.method public synthetic lambda$showLocationNow$1$LocationFragment(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->launchMap()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "LocationFragment.onCreateView"

    .line 93
    invoke-static {p3}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const p3, 0x7f0c00bc

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901dd

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ViewAnimator;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->viewAnimator:Landroid/widget/ViewAnimator;

    const p2, 0x7f0901dc

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->locationMap:Landroid/widget/ImageView;

    const p2, 0x7f09004a

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    const p2, 0x7f09004b

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    const p2, 0x7f0901c0

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->latLongLine:Landroid/widget/TextView;

    const p2, 0x7f0901d8

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->locationLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/incallui/baseui/BaseFragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->dataTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LocationFragment.setAddress"

    .line 122
    invoke-static {v2, p1, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isAddressSet:Z

    .line 124
    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 135
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine1:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/incallui/calllocation/impl/LocationFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->addressLine2:Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/android/incallui/calllocation/impl/LocationFragment;->updateText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_ADDRESS:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 146
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->displayWhenReady()V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 8

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocationFragment.setLocation"

    invoke-static {v3, v0, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isLocationSet:Z

    .line 153
    iput-object p1, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->location:Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->latLongLine:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v2, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->latLongLine:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1102c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v0

    .line 159
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_LOCATION:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->displayWhenReady()V

    return-void
.end method

.method public setMap(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "LocationFragment.setMap"

    .line 112
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->isMapSet:Z

    .line 114
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->locationMap:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/incallui/calllocation/impl/LocationFragment;->locationMap:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-direct {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->displayWhenReady()V

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/calllocation/impl/LocationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/logging/DialerImpression$Type;->EMERGENCY_GOT_MAP:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v0}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    return-void
.end method
