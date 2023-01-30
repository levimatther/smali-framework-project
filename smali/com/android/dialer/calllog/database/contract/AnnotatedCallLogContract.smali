.class public Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;
.super Ljava/lang/Object;
.source "AnnotatedCallLogContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;,
        Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$AnnotatedCallLog;,
        Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CommonColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/android/dialer/constants/Constants;->get()Lcom/android/dialer/constants/Constants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/constants/Constants;->getAnnotatedCallLogProviderAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->AUTHORITY:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 131
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 132
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
