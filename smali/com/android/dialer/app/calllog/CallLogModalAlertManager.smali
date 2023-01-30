.class public Lcom/android/dialer/app/calllog/CallLogModalAlertManager;
.super Ljava/lang/Object;
.source "CallLogModalAlertManager.java"

# interfaces
.implements Lcom/android/dialer/app/alert/AlertManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;
    }
.end annotation


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final listener:Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;

.field private final parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->parent:Landroid/view/ViewGroup;

    .line 44
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->listener:Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;

    const p1, 0x7f090207

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->container:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->contains(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->listener:Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;->onShowModalAlert(Z)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->listener:Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/dialer/app/calllog/CallLogModalAlertManager$Listener;->onShowModalAlert(Z)V

    return-void
.end method

.method public contains(Landroid/view/View;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->parent:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogModalAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
