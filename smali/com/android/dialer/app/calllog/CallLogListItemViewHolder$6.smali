.class Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;
.super Ljava/lang/Object;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->block()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 7

    .line 1300
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$6;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    invoke-interface/range {v1 .. v6}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onBlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V

    return-void
.end method
