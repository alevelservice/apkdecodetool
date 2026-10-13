.class Lio/flutter/plugins/imagepicker/c;
.super Ljava/lang/Object;
.source "ImagePickerCache.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static a()V
    .locals 1

    .line 25
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "flutter_image_picker_shared_preference"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static a(Landroid/net/Uri;)V
    .locals 2

    .line 15
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "flutter_image_picker_pending_image_uri"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static a(Lg/a/c/a/j;)V
    .locals 2

    const-string v0, "maxWidth"

    .line 7
    invoke-virtual {p0, v0}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-string v1, "maxHeight"

    .line 8
    invoke-virtual {p0, v1}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 9
    invoke-static {v0, p0}, Lio/flutter/plugins/imagepicker/c;->a(Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method private static a(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 3

    .line 10
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const-string p0, "flutter_image_picker_max_width"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-string v1, "flutter_image_picker_max_height"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pickImage"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "image"

    .line 4
    invoke-static {p0}, Lio/flutter/plugins/imagepicker/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pickVideo"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "video"

    .line 6
    invoke-static {p0}, Lio/flutter/plugins/imagepicker/c;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p0, :cond_1

    const-string v1, "flutter_image_picker_image_path"

    .line 21
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "flutter_image_picker_error_code"

    .line 22
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz p2, :cond_3

    const-string p0, "flutter_image_picker_error_message"

    .line 23
    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 7
    sget-object v2, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "flutter_image_picker_image_path"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v2, :cond_1

    .line 8
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    :cond_1
    sget-object v2, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "flutter_image_picker_error_code"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    .line 12
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 15
    sget-object v2, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "flutter_image_picker_error_message"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    sget-object v2, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    .line 17
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorMessage"

    .line 18
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_type"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_3
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_max_width"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    .line 23
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxWidth"

    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_4
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    const-string v2, "flutter_image_picker_max_height"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27
    sget-object v1, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    .line 28
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxHeight"

    .line 29
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flutter_image_picker_type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static c()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lio/flutter/plugins/imagepicker/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "flutter_image_picker_pending_image_uri"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
