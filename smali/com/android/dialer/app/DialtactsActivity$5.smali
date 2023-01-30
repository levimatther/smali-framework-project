.class Lcom/android/dialer/app/DialtactsActivity$5;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialtactsActivity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$5;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 346
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$5;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1100(Lcom/android/dialer/app/DialtactsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->CLOSE_SEARCH_WITH_HIDE_BUTTON:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 350
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$5;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1200(Lcom/android/dialer/app/DialtactsActivity;)Z

    goto :goto_0

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$5;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1300(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 354
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->HIDE_KEYBOARD_IN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 356
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$5;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1400(Lcom/android/dialer/app/DialtactsActivity;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
