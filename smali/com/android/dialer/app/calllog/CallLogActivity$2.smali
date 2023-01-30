.class Lcom/android/dialer/app/calllog/CallLogActivity$2;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;->onOptionMenuClick(I)V
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

    .line 604
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 10

    .line 608
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 609
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 610
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 611
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$200(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-wide v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    .line 612
    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogActivity;->access$300(Lcom/android/dialer/app/calllog/CallLogActivity;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    move-result-object v9

    .line 608
    invoke-interface/range {v1 .. v9}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onBlockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V

    return-void
.end method
