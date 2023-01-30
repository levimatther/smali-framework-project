.class public Lcom/android/dialer/speeddial/SpeedDialFragment;
.super Landroid/app/Fragment;
.source "SpeedDialFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/android/dialer/speeddial/SpeedDialFragment;
    .locals 1

    .line 32
    new-instance v0, Lcom/android/dialer/speeddial/SpeedDialFragment;

    invoke-direct {v0}, Lcom/android/dialer/speeddial/SpeedDialFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public hasFrequents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00a2

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
