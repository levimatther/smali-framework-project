.class Lcom/android/dialer/app/settings/SpeedDialListActivity$6;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

.field final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    iput p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->val$dialogType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 789
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 790
    iget p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->val$dialogType:I

    if-ne v2, p2, :cond_0

    .line 791
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$702(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)I

    .line 793
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p2

    add-int/lit8 v6, p2, -0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 795
    :cond_0
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$900(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 796
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v2

    :cond_1
    if-ne p2, v2, :cond_3

    .line 798
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 799
    iget p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->val$dialogType:I

    if-ne v2, p2, :cond_2

    .line 800
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$702(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)I

    .line 801
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p2

    add-int/lit8 v6, p2, -0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 804
    :cond_2
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$900(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 805
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v2

    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_9

    .line 807
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_9

    .line 808
    iget p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->val$dialogType:I

    if-nez p2, :cond_4

    .line 809
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    goto/16 :goto_1

    :cond_4
    const/4 p3, 0x0

    if-ne v2, p2, :cond_5

    .line 811
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$700(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;

    .line 812
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v4}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 813
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v4

    iget-object v5, p2, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/dialer/app/settings/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-static {v3, v4, v5, p2}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$700(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v3

    invoke-virtual {p2, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$700(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v3

    invoke-static {p2, v3, p3, p3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1000(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 821
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$702(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)I

    .line 822
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p2

    add-int/lit8 v6, p2, -0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 824
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const p3, 0x7f1101ed

    invoke-static {p2, p3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f1101ec

    if-ne v3, p2, :cond_6

    .line 826
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v3

    invoke-virtual {p2, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result v3

    invoke-static {p2, v3, p3, p3}, Lcom/android/dialer/app/settings/SpeedDialUtils;->saveNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1000(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 829
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p2

    add-int/lit8 v6, p2, -0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 830
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    if-ne v4, p2, :cond_8

    :goto_0
    const/16 p2, 0x9

    if-gt v3, p2, :cond_7

    .line 834
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$500(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v3, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    :cond_7
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialUtils;->removeAllNumber(Landroid/content/Context;)V

    .line 837
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1000(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    .line 838
    iget-object v3, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$800(Lcom/android/dialer/app/settings/SpeedDialListActivity;)I

    move-result p2

    add-int/lit8 v6, p2, -0x1

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 839
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$1100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    .line 841
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$6;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p2}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$900(Lcom/android/dialer/app/settings/SpeedDialListActivity;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 842
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v2

    :cond_9
    return v1
.end method
