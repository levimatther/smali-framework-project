.class Lcom/android/voicemail/VVMMainActivity$2;
.super Ljava/lang/Object;
.source "VVMMainActivity.java"

# interfaces
.implements Lcom/android/dialer/blocking/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicemail/VVMMainActivity;->onOptionMenuClick(I)V
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

    .line 369
    iput-object p1, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 10

    .line 373
    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->mBlockReportListener:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    .line 374
    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v2, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v4, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    .line 375
    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget v5, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callType:I

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/phonenumbercache/ContactInfo;

    iget-object v6, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->sourceType:Lcom/android/dialer/logging/ContactSource$Type;

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$000(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    move-result-object v0

    iget-wide v7, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v0, p0, Lcom/android/voicemail/VVMMainActivity$2;->this$0:Lcom/android/voicemail/VVMMainActivity;

    .line 376
    invoke-static {v0}, Lcom/android/voicemail/VVMMainActivity;->access$100(Lcom/android/voicemail/VVMMainActivity;)Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;

    move-result-object v9

    .line 373
    invoke-interface/range {v1 .. v9}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;->onBlockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V

    return-void
.end method
