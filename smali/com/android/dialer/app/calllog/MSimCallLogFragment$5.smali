.class Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;
.super Ljava/lang/Object;
.source "MSimCallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/MSimCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 731
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Status selected, position: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p2, p4, p5}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/app/calllog/SpinnerContent;

    iget p1, p1, Lcom/android/dialer/app/calllog/SpinnerContent;->value:I

    .line 733
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {p2}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$800(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 734
    iget-object p2, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {p2, p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$802(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)I

    .line 735
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$5;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->fetchCalls()V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
