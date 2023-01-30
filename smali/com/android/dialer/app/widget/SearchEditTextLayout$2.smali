.class Lcom/android/dialer/app/widget/SearchEditTextLayout$2;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/widget/SearchEditTextLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/widget/SearchEditTextLayout;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/dialer/app/widget/SearchEditTextLayout$2;->this$0:Lcom/android/dialer/app/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 119
    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->showInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    :goto_0
    return-void
.end method
