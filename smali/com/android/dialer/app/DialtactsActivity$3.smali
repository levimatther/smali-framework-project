.class Lcom/android/dialer/app/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 278
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 284
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p2}, Lcom/android/dialer/app/DialtactsActivity;->access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 293
    sget-object p2, Lcom/android/dialer/logging/UiAction$Type;->TEXT_CHANGE_WITH_INPUT:Lcom/android/dialer/logging/UiAction$Type;

    invoke-static {p2}, Lcom/android/dialer/performancereport/PerformanceReport;->recordClick(Lcom/android/dialer/logging/UiAction$Type;)V

    .line 300
    :cond_1
    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p2, p1}, Lcom/android/dialer/app/DialtactsActivity;->access$202(Lcom/android/dialer/app/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 307
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    .line 308
    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$300(Lcom/android/dialer/app/DialtactsActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$400(Lcom/android/dialer/app/DialtactsActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$300(Lcom/android/dialer/app/DialtactsActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$500(Lcom/android/dialer/app/DialtactsActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, p2

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    .line 310
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$300(Lcom/android/dialer/app/DialtactsActivity;)Z

    move-result p3

    iget-object p4, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p4}, Lcom/android/dialer/app/DialtactsActivity;->access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p3, p4, p2}, Lcom/android/dialer/app/DialtactsActivity;->access$600(Lcom/android/dialer/app/DialtactsActivity;ZLjava/lang/String;Z)V

    .line 314
    :cond_5
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/SmartDialSearchFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/SmartDialSearchFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 315
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$700(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/SmartDialSearchFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p2}, Lcom/android/dialer/app/DialtactsActivity;->access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_6
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/RegularSearchFragment;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/RegularSearchFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/app/list/RegularSearchFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 317
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$800(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/app/list/RegularSearchFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p2}, Lcom/android/dialer/app/DialtactsActivity;->access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/app/list/RegularSearchFragment;->setQueryString(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_7
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$900(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 319
    iget-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p1}, Lcom/android/dialer/app/DialtactsActivity;->access$900(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/searchfragment/list/NewSearchFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$3;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {p2}, Lcom/android/dialer/app/DialtactsActivity;->access$200(Lcom/android/dialer/app/DialtactsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dialer/searchfragment/list/NewSearchFragment;->setQuery(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method
