.class public interface abstract Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;
.super Ljava/lang/Object;
.source "StructuredFieldParserConstants.java"


# static fields
.field public static final ANY:I = 0x11

.field public static final CONTENT:I = 0xf

.field public static final DEFAULT:I = 0x0

.field public static final EOF:I = 0x0

.field public static final FOLD:I = 0xc

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x10

.field public static final QUOTEDSTRING:I = 0xd

.field public static final STRING_CONTENT:I = 0xb

.field public static final WS:I = 0xe

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "<EOF>"

    const-string v1, "\"(\""

    const-string v2, "\")\""

    const-string v3, "\"(\""

    const-string v4, "<token of kind 4>"

    const-string v5, "\"(\""

    const-string v6, "\")\""

    const-string v7, "<token of kind 7>"

    const-string v8, "<token of kind 8>"

    const-string v9, "\"\\\"\""

    const-string v10, "<token of kind 10>"

    const-string v11, "<STRING_CONTENT>"

    const-string v12, "<FOLD>"

    const-string v13, "\"\\\"\""

    const-string v14, "<WS>"

    const-string v15, "<CONTENT>"

    const-string v16, "<QUOTEDPAIR>"

    const-string v17, "<ANY>"

    .line 56
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
