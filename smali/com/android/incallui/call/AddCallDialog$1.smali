.class Lcom/android/incallui/call/AddCallDialog$1;
.super Landroid/widget/BaseAdapter;
.source "AddCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/call/AddCallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/call/AddCallDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/AddCallDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    invoke-static {v0}, Lcom/android/incallui/call/AddCallDialog;->access$000(Lcom/android/incallui/call/AddCallDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 88
    iget-object p3, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    iget-object p3, p3, Lcom/android/incallui/call/AddCallDialog;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    if-nez p2, :cond_0

    const p2, 0x7f0c002c

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_0
    iget-object p3, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    const v0, 0x7f0902f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/android/incallui/call/AddCallDialog;->access$102(Lcom/android/incallui/call/AddCallDialog;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 98
    iget-object p3, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    invoke-static {p3}, Lcom/android/incallui/call/AddCallDialog;->access$100(Lcom/android/incallui/call/AddCallDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog$1;->this$0:Lcom/android/incallui/call/AddCallDialog;

    invoke-static {v0}, Lcom/android/incallui/call/AddCallDialog;->access$000(Lcom/android/incallui/call/AddCallDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
