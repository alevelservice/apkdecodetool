.class public final Lcom/mapbox/mapboxsdk/u/a/a$a;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/u/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/u/a/a$a;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 9
    .param p0    # Lcom/google/gson/JsonArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "within"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/geojson/Polygon;->fromJson(Ljava/lang/String;)Lcom/mapbox/geojson/Polygon;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a;->a(Lcom/mapbox/geojson/Polygon;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_4

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    const-string v5, "literal"

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v3, Lcom/google/gson/JsonArray;

    if-eqz v5, :cond_3

    .line 9
    check-cast v3, Lcom/google/gson/JsonArray;

    .line 10
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 11
    :goto_1
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 12
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 13
    instance-of v8, v7, Lcom/google/gson/JsonPrimitive;

    if-eqz v8, :cond_1

    .line 14
    check-cast v7, Lcom/google/gson/JsonPrimitive;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/u/a/a$a;->b(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested literal arrays are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    new-instance v3, Lcom/mapbox/mapboxsdk/u/a/a$c;

    invoke-direct {v3, v5}, Lcom/mapbox/mapboxsdk/u/a/a$c;-><init>([Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_4
    new-instance p0, Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-direct {p0, v1, v0}, Lcom/mapbox/mapboxsdk/u/a/a;-><init>(Ljava/lang/String;[Lcom/mapbox/mapboxsdk/u/a/a;)V

    return-object p0

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t convert empty jsonArray expressions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static a(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 4
    .param p0    # Lcom/google/gson/JsonElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_1

    .line 23
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonPrimitive;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    instance-of v0, p0, Lcom/google/gson/j;

    if-eqz v0, :cond_2

    .line 25
    new-instance p0, Lcom/mapbox/mapboxsdk/u/a/a$b;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/u/a/a$b;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 26
    :cond_2
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonElement;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_3
    new-instance p0, Lcom/mapbox/mapboxsdk/u/a/a$d;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/u/a/a$d;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported expression conversion for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static a(Lcom/google/gson/JsonPrimitive;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 1
    .param p0    # Lcom/google/gson/JsonPrimitive;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lcom/mapbox/mapboxsdk/u/a/a$b;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->b(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/u/a/a$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/u/a/a;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lcom/mapbox/mapboxsdk/u/a/a$a;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/u/a/a$a;->a(Lcom/google/gson/JsonArray;)Lcom/mapbox/mapboxsdk/u/a/a;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/google/gson/JsonPrimitive;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported literal expression conversion for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
