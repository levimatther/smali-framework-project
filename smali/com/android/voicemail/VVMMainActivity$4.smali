.class Lcom/android/voicemail/VVMMainActivity$4;
.super Ljava/lang/Object;
.source "VVMMainActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/VVMMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicemail/VVMMainActivity;


# direct methods
.method constructor <init>(Lcom/android/voicemail/VVMMainActivity;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCallLogMenubar(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const v2, 0x7f1104b8

    const/16 v3, 0xa

    const v4, 0x7f110074

    const/16 v5, 0x9

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 467
    :cond_1
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_2
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 459
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :goto_0
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {p1}, Lcom/android/voicemail/VVMMainActivity;->access$400(Lcom/android/voicemail/VVMMainActivity;)Landroid/widget/MenuBar;

    move-result-object p1

    const v0, 0x7f11000a

    const v2, 0x7f110312

    const v3, 0x7f11000c

    iget-object v4, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    .line 475
    invoke-static {v4}, Lcom/android/voicemail/VVMMainActivity;->access$300(Lcom/android/voicemail/VVMMainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 474
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 476
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-virtual {p1}, Lcom/android/voicemail/VVMMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$400(Lcom/android/voicemail/VVMMainActivity;)Landroid/widget/MenuBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    .line 477
    iget-object p1, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-virtual {p1}, Lcom/android/voicemail/VVMMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$4;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$400(Lcom/android/voicemail/VVMMainActivity;)Landroid/widget/MenuBar;

    move-result-object v0

    invoke-static {p1, v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->CheckAndSetImageForMenuBarAtPosition(Landroid/content/Context;Landroid/widget/MenuBar;II)V

    return-void
.end method
