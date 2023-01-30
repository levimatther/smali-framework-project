.class Lcom/android/dialer/app/DialtactsActivity$8;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/PhoneNumberPickerFragment$CursorReranker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/DialtactsActivity;->onAttachFragment(Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialtactsActivity;

.field final synthetic val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialtactsActivity;Lcom/android/dialer/app/list/SearchFragment;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/android/dialer/app/DialtactsActivity$8;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    iput-object p2, p0, Lcom/android/dialer/app/DialtactsActivity$8;->val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rerankCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 716
    invoke-static {}, Lcom/android/dialer/common/Assert;->isMainThread()V

    .line 717
    iget-object v0, p0, Lcom/android/dialer/app/DialtactsActivity$8;->val$searchFragment:Lcom/android/dialer/app/list/SearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/SearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/android/dialer/app/DialtactsActivity$8;->this$0:Lcom/android/dialer/app/DialtactsActivity;

    invoke-static {v1}, Lcom/android/dialer/app/DialtactsActivity;->access$1600(Lcom/android/dialer/app/DialtactsActivity;)Lcom/android/dialer/p13n/inference/protocol/P13nRanker;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/android/dialer/p13n/inference/protocol/P13nRanker;->rankCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
