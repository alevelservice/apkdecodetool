.class public final synthetic Le/m/b/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/MapView$w;


# instance fields
.field private final synthetic a:Le/m/b/r;

.field private final synthetic b:Lcom/mapbox/mapboxsdk/maps/n;


# direct methods
.method public synthetic constructor <init>(Le/m/b/r;Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/b/d;->a:Le/m/b/r;

    iput-object p2, p0, Le/m/b/d;->b:Lcom/mapbox/mapboxsdk/maps/n;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le/m/b/d;->a:Le/m/b/r;

    iget-object v1, p0, Le/m/b/d;->b:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0, v1, p1}, Le/m/b/r;->a(Lcom/mapbox/mapboxsdk/maps/n;Ljava/lang/String;)V

    return-void
.end method
