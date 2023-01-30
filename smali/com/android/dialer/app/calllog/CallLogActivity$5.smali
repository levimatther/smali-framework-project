.class Lcom/android/dialer/app/calllog/CallLogActivity$5;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;->alertCallLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 842
    iget-object p2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p2}, Lcom/android/dialer/app/calllog/CallLogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 843
    new-instance v0, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;

    invoke-direct {v0, p0, p2}, Lcom/android/dialer/app/calllog/CallLogActivity$5$1;-><init>(Lcom/android/dialer/app/calllog/CallLogActivity$5;Landroid/content/ContentResolver;)V

    const/4 p2, 0x0

    new-array v1, p2, [Ljava/lang/Void;

    .line 860
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 861
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 862
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 863
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 864
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 865
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$100(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/widget/MenuBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 866
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$500(Lcom/android/dialer/app/calllog/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 865
    invoke-virtual {p1, p2, p2, p2, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 870
    new-instance p1, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 871
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a6

    .line 872
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 873
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xdc

    const/16 v4, 0x36

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 874
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x50

    const/16 v2, 0x23

    .line 875
    invoke-virtual {p1, v1, p2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 876
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 877
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 878
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 880
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$5;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->cancelAllMissedCallNotifications(Landroid/content/Context;)V

    return-void
.end method
