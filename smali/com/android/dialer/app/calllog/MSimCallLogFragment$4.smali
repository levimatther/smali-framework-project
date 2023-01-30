.class Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;
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

    .line 710
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

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

    .line 713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Slot selected, position: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, p4}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p3, p3, -0x1

    .line 715
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$600(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)I

    move-result p1

    if-eq p3, p1, :cond_0

    .line 716
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {p1, p3}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$602(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)I

    .line 717
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {p1, p3}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$700(Lcom/android/dialer/app/calllog/MSimCallLogFragment;I)V

    .line 718
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$4;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

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
