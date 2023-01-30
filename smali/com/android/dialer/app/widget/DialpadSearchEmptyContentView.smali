.class public Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;
.super Lcom/android/dialer/widget/EmptyContentView;
.source "DialpadSearchEmptyContentView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected inflateLayout()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;->setOrientation(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/dialer/app/widget/DialpadSearchEmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0081

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
