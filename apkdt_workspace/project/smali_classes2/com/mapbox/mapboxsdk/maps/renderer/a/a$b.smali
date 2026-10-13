.class final enum Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;
.super Ljava/lang/Enum;
.source "EGLConfigChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/renderer/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Format16Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field public static final enum Format24Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field public static final enum Format32BitAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field public static final enum Format32BitNoAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field public static final enum Unknown:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

.field private static final synthetic e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Format16Bit"

    invoke-direct {v0, v3, v2, v1}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format16Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const/4 v3, 0x1

    const-string v4, "Format32BitNoAlpha"

    invoke-direct {v0, v4, v3, v3}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format32BitNoAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 3
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const/4 v4, 0x2

    const-string v5, "Format32BitAlpha"

    invoke-direct {v0, v5, v4, v4}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format32BitAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const-string v5, "Format24Bit"

    invoke-direct {v0, v5, v1, v2}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format24Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const/4 v5, 0x4

    const-string v6, "Unknown"

    invoke-direct {v0, v6, v5, v5}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Unknown:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    .line 6
    sget-object v6, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format16Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    aput-object v6, v0, v2

    sget-object v2, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format32BitNoAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    aput-object v2, v0, v3

    sget-object v2, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format32BitAlpha:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    aput-object v2, v0, v4

    sget-object v2, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Format24Bit:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->Unknown:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;
    .locals 1

    .line 1
    const-class v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    return-object p0
.end method

.method public static values()[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    invoke-virtual {v0}, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$b;

    return-object v0
.end method
