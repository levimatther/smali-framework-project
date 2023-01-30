.class public interface abstract annotation Lcom/android/dialer/common/NetworkUtil$NetworkType;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/common/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final MOBILE_2G:Ljava/lang/String; = "MOBILE_2G"

.field public static final MOBILE_3G:Ljava/lang/String; = "MOBILE_3G"

.field public static final MOBILE_4G:Ljava/lang/String; = "MOBILE_4G"

.field public static final MOBILE_UNKNOWN:Ljava/lang/String; = "MOBILE_UNKNOWN"

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final WIFI:Ljava/lang/String; = "WIFI"
