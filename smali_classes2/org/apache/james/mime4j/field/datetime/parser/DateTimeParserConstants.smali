.class public interface abstract Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;
.super Ljava/lang/Object;
.source "DateTimeParserConstants.java"


# static fields
.field public static final ANY:I = 0x30

.field public static final COMMENT:I = 0x26

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x2e

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final MILITARY_ZONE:I = 0x23

.field public static final NESTED_COMMENT:I = 0x2

.field public static final OFFSETDIR:I = 0x18

.field public static final QUOTEDPAIR:I = 0x2f

.field public static final WS:I = 0x24

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    const-string v0, "<EOF>"

    const-string v1, "\"\\r\""

    const-string v2, "\"\\n\""

    const-string v3, "\",\""

    const-string v4, "\"Mon\""

    const-string v5, "\"Tue\""

    const-string v6, "\"Wed\""

    const-string v7, "\"Thu\""

    const-string v8, "\"Fri\""

    const-string v9, "\"Sat\""

    const-string v10, "\"Sun\""

    const-string v11, "\"Jan\""

    const-string v12, "\"Feb\""

    const-string v13, "\"Mar\""

    const-string v14, "\"Apr\""

    const-string v15, "\"May\""

    const-string v16, "\"Jun\""

    const-string v17, "\"Jul\""

    const-string v18, "\"Aug\""

    const-string v19, "\"Sep\""

    const-string v20, "\"Oct\""

    const-string v21, "\"Nov\""

    const-string v22, "\"Dec\""

    const-string v23, "\":\""

    const-string v24, "<OFFSETDIR>"

    const-string v25, "\"UT\""

    const-string v26, "\"GMT\""

    const-string v27, "\"EST\""

    const-string v28, "\"EDT\""

    const-string v29, "\"CST\""

    const-string v30, "\"CDT\""

    const-string v31, "\"MST\""

    const-string v32, "\"MDT\""

    const-string v33, "\"PST\""

    const-string v34, "\"PDT\""

    const-string v35, "<MILITARY_ZONE>"

    const-string v36, "<WS>"

    const-string v37, "\"(\""

    const-string v38, "\")\""

    const-string v39, "<token of kind 39>"

    const-string v40, "\"(\""

    const-string v41, "<token of kind 41>"

    const-string v42, "<token of kind 42>"

    const-string v43, "\"(\""

    const-string v44, "\")\""

    const-string v45, "<token of kind 45>"

    const-string v46, "<DIGITS>"

    const-string v47, "<QUOTEDPAIR>"

    const-string v48, "<ANY>"

    .line 54
    filled-new-array/range {v0 .. v48}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
