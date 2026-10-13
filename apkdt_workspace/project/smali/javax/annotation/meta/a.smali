.class public final enum Ljavax/annotation/meta/a;
.super Ljava/lang/Enum;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/annotation/meta/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Ljavax/annotation/meta/a;

.field public static final enum MAYBE:Ljavax/annotation/meta/a;

.field public static final enum NEVER:Ljavax/annotation/meta/a;

.field public static final enum UNKNOWN:Ljavax/annotation/meta/a;

.field private static final synthetic e:[Ljavax/annotation/meta/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljavax/annotation/meta/a;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v2, v1}, Ljavax/annotation/meta/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/a;->ALWAYS:Ljavax/annotation/meta/a;

    .line 2
    new-instance v0, Ljavax/annotation/meta/a;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v2}, Ljavax/annotation/meta/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/a;->UNKNOWN:Ljavax/annotation/meta/a;

    .line 3
    new-instance v0, Ljavax/annotation/meta/a;

    const/4 v3, 0x2

    const-string v4, "MAYBE"

    invoke-direct {v0, v4, v3}, Ljavax/annotation/meta/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/a;->MAYBE:Ljavax/annotation/meta/a;

    .line 4
    new-instance v0, Ljavax/annotation/meta/a;

    const/4 v4, 0x3

    const-string v5, "NEVER"

    invoke-direct {v0, v5, v4}, Ljavax/annotation/meta/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/a;->NEVER:Ljavax/annotation/meta/a;

    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/annotation/meta/a;

    .line 5
    sget-object v5, Ljavax/annotation/meta/a;->ALWAYS:Ljavax/annotation/meta/a;

    aput-object v5, v0, v1

    sget-object v1, Ljavax/annotation/meta/a;->UNKNOWN:Ljavax/annotation/meta/a;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/annotation/meta/a;->MAYBE:Ljavax/annotation/meta/a;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/annotation/meta/a;->NEVER:Ljavax/annotation/meta/a;

    aput-object v1, v0, v4

    sput-object v0, Ljavax/annotation/meta/a;->e:[Ljavax/annotation/meta/a;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/meta/a;
    .locals 1

    .line 1
    const-class v0, Ljavax/annotation/meta/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/annotation/meta/a;

    return-object p0
.end method

.method public static values()[Ljavax/annotation/meta/a;
    .locals 1

    .line 1
    sget-object v0, Ljavax/annotation/meta/a;->e:[Ljavax/annotation/meta/a;

    invoke-virtual {v0}, [Ljavax/annotation/meta/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/meta/a;

    return-object v0
.end method
