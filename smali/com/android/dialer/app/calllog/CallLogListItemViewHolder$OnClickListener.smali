.class public interface abstract Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;
.super Ljava/lang/Object;
.source "CallLogListItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickListener"
.end annotation


# virtual methods
.method public abstract onBlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
.end method

.method public abstract onBlockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V
.end method

.method public abstract onBlockReportSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
.end method

.method public abstract onReportNotSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
.end method

.method public abstract onUnblock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;)V
.end method

.method public abstract onUnblockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V
.end method
