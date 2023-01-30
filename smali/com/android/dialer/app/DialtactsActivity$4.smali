.class Lcom/android/dialer/app/DialtactsActivity$4;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 327
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$4;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 330
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$4;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/DialtactsActivity;->isInSearchUi()Z

    move-result p1

    if-nez p1, :cond_0

    .line 331
    sget-object p1, Lcom/android/dialer/logging/UiAction$Type;->OPEN_SEARCH:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p1}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 332
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$4;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1000(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/widget/ActionBarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/widget/ActionBarController;->onSearchBoxTapped()V

    .line 333
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$4;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    const/4 v0, 0x0

    .line 334
    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$1100(Lcom/android/dialer/app/DialtactsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 333
    invoke-static {p1, v0, v1, v2}, Lcom/android/dialer/app/DialtactsActivity;->access$600(Lcom/android/dialer/app/DialtactsActivity;ZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method
