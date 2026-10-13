.class public Lf/a/a/a/c;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf/a/a/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "other"

    return-object p0

    :pswitch_0
    const-string p0, "pager"

    return-object p0

    :pswitch_1
    const-string p0, "fax home"

    return-object p0

    :pswitch_2
    const-string p0, "fax work"

    return-object p0

    :pswitch_3
    const-string p0, "work"

    return-object p0

    :pswitch_4
    const-string p0, "mobile"

    return-object p0

    :pswitch_5
    const-string p0, "home"

    return-object p0

    :cond_0
    const-string p0, "main"

    return-object p0

    :cond_1
    const-string p0, "company"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lf/a/a/a/c;->a:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lf/a/a/a/c;->b:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
