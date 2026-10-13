.class final enum Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;
.super Ljava/lang/Enum;
.source "EGLConfigChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/renderer/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Format16Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

.field public static final enum Format24Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

.field private static final synthetic e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Format16Depth8Stencil"

    invoke-direct {v0, v3, v2, v1}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->Format16Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    const-string v3, "Format24Depth8Stencil"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->Format24Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    .line 3
    sget-object v3, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->Format16Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    aput-object v3, v0, v2

    sget-object v2, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->Format24Depth8Stencil:Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

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
    iput p3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;
    .locals 1

    .line 1
    const-class v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    return-object p0
.end method

.method public static values()[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->e:[Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    invoke-virtual {v0}, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/maps/renderer/a/a$c;

    return-object v0
.end method
