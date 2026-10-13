.class public final enum Ld/a/d;
.super Ljava/lang/Enum;
.source "GallerySaver.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Ld/a/d;

.field public static final enum image:Ld/a/d;

.field public static final enum video:Ld/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ld/a/d;

    new-instance v1, Ld/a/d;

    const/4 v2, 0x0

    const-string v3, "image"

    invoke-direct {v1, v3, v2}, Ld/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld/a/d;->image:Ld/a/d;

    aput-object v1, v0, v2

    new-instance v1, Ld/a/d;

    const/4 v2, 0x1

    const-string v3, "video"

    invoke-direct {v1, v3, v2}, Ld/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld/a/d;->video:Ld/a/d;

    aput-object v1, v0, v2

    sput-object v0, Ld/a/d;->e:[Ld/a/d;

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

.method public static valueOf(Ljava/lang/String;)Ld/a/d;
    .locals 1

    const-class v0, Ld/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/a/d;

    return-object p0
.end method

.method public static values()[Ld/a/d;
    .locals 1

    sget-object v0, Ld/a/d;->e:[Ld/a/d;

    invoke-virtual {v0}, [Ld/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/d;

    return-object v0
.end method
