.class public final enum Lcom/google/j2objc/annotations/LoopTranslation$a;
.super Ljava/lang/Enum;
.source "LoopTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/j2objc/annotations/LoopTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/j2objc/annotations/LoopTranslation$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$a;

.field public static final enum JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$a;

.field private static final synthetic e:[Lcom/google/j2objc/annotations/LoopTranslation$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/j2objc/annotations/LoopTranslation$a;

    const/4 v1, 0x0

    const-string v2, "JAVA_ITERATOR"

    invoke-direct {v0, v2, v1}, Lcom/google/j2objc/annotations/LoopTranslation$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$a;->JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$a;

    .line 2
    new-instance v0, Lcom/google/j2objc/annotations/LoopTranslation$a;

    const/4 v2, 0x1

    const-string v3, "FAST_ENUMERATION"

    invoke-direct {v0, v3, v2}, Lcom/google/j2objc/annotations/LoopTranslation$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$a;->FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/j2objc/annotations/LoopTranslation$a;

    .line 3
    sget-object v3, Lcom/google/j2objc/annotations/LoopTranslation$a;->JAVA_ITERATOR:Lcom/google/j2objc/annotations/LoopTranslation$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/j2objc/annotations/LoopTranslation$a;->FAST_ENUMERATION:Lcom/google/j2objc/annotations/LoopTranslation$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/j2objc/annotations/LoopTranslation$a;->e:[Lcom/google/j2objc/annotations/LoopTranslation$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/j2objc/annotations/LoopTranslation$a;
    .locals 1

    .line 1
    const-class v0, Lcom/google/j2objc/annotations/LoopTranslation$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/j2objc/annotations/LoopTranslation$a;

    return-object p0
.end method

.method public static values()[Lcom/google/j2objc/annotations/LoopTranslation$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/j2objc/annotations/LoopTranslation$a;->e:[Lcom/google/j2objc/annotations/LoopTranslation$a;

    invoke-virtual {v0}, [Lcom/google/j2objc/annotations/LoopTranslation$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/j2objc/annotations/LoopTranslation$a;

    return-object v0
.end method
