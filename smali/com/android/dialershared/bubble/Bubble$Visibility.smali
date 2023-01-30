.class interface abstract annotation Lcom/android/dialershared/bubble/Bubble$Visibility;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialershared/bubble/Bubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Visibility"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ENTERING:I = 0x1

.field public static final EXITING:I = 0x3

.field public static final HIDDEN:I = 0x0

.field public static final SHOWING:I = 0x2
