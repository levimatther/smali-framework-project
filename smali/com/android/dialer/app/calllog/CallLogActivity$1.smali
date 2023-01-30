.class Lcom/android/dialer/app/calllog/CallLogActivity$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;
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

    .line 182
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCallLogMenubar(I)V
    .locals 9

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f11013a

    const/4 v2, 0x7

    const v3, 0x7f1103dc

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    .line 195
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f1104b8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    new-instance p1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f110418

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance p1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f11005b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p1, Landroid/util/Pair;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f110074

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p1, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance p1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$100(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/widget/MenuBar;

    move-result-object p1

    const v1, 0x7f11000a

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 203
    invoke-static {v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$000(Lcom/android/dialer/app/calllog/CallLogActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f11000b

    goto :goto_1

    :cond_2
    const v2, 0x7f11000f

    :goto_1
    const v3, 0x7f11000c

    .line 202
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 205
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$100(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/widget/MenuBar;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 206
    invoke-static {v2}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$000(Lcom/android/dialer/app/calllog/CallLogActivity;)Z

    move-result v2

    xor-int/2addr v2, v6

    .line 205
    invoke-static {p1, v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 207
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$100(Lcom/android/dialer/app/calllog/CallLogActivity;)Landroid/widget/MenuBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 208
    invoke-static {v1}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$000(Lcom/android/dialer/app/calllog/CallLogActivity;)Z

    move-result v1

    xor-int/2addr v1, v6

    .line 207
    invoke-static {p1, v0, v5, v1}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void
.end method
