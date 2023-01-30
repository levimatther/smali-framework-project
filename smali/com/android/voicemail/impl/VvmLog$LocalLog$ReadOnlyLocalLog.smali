.class public Lcom/android/voicemail/impl/VvmLog$LocalLog$ReadOnlyLocalLog;
.super Ljava/lang/Object;
.source "VvmLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicemail/impl/VvmLog$LocalLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyLocalLog"
.end annotation


# instance fields
.field private final mLog:Lcom/android/voicemail/impl/VvmLog$LocalLog;


# direct methods
.method constructor <init>(Lcom/android/voicemail/impl/VvmLog$LocalLog;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/voicemail/impl/VvmLog$LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/voicemail/impl/VvmLog$LocalLog;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/voicemail/impl/VvmLog$LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/voicemail/impl/VvmLog$LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/voicemail/impl/VvmLog$LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/voicemail/impl/VvmLog$LocalLog$ReadOnlyLocalLog;->mLog:Lcom/android/voicemail/impl/VvmLog$LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/voicemail/impl/VvmLog$LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
