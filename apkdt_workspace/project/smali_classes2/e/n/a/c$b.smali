.class Le/n/a/c$b;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->d(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/j;

.field final synthetic f:Le/n/a/c$i;

.field final synthetic g:Le/n/a/a;

.field final synthetic h:Le/n/a/c;


# direct methods
.method constructor <init>(Le/n/a/c;Lg/a/c/a/j;Le/n/a/c$i;Le/n/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$b;->h:Le/n/a/c;

    iput-object p2, p0, Le/n/a/c$b;->e:Lg/a/c/a/j;

    iput-object p3, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    iput-object p4, p0, Le/n/a/c$b;->g:Le/n/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    new-instance v0, Le/n/a/f/e;

    iget-object v1, p0, Le/n/a/c$b;->e:Lg/a/c/a/j;

    iget-object v2, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-direct {v0, v1, v2}, Le/n/a/f/e;-><init>(Lg/a/c/a/j;Lg/a/c/a/k$d;)V

    .line 2
    invoke-virtual {v0}, Le/n/a/f/b;->b()Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Le/n/a/f/b;->d()Z

    move-result v0

    .line 4
    iget-object v2, p0, Le/n/a/c$b;->e:Lg/a/c/a/j;

    const-string v3, "operations"

    invoke-virtual {v2, v3}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 7
    new-instance v6, Le/n/a/f/c;

    invoke-direct {v6, v4, v1}, Le/n/a/f/c;-><init>(Ljava/util/Map;Z)V

    .line 8
    invoke-virtual {v6}, Le/n/a/f/c;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "query"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_1
    const-string v8, "update"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "insert"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v8, "execute"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    :cond_0
    :goto_1
    if-eqz v7, :cond_a

    if-eq v7, v11, :cond_7

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_1

    .line 10
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bad_param"

    invoke-virtual {v0, v2, v1, v5}, Le/n/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_1
    iget-object v4, p0, Le/n/a/c$b;->h:Le/n/a/c;

    iget-object v5, p0, Le/n/a/c$b;->g:Le/n/a/a;

    invoke-static {v4, v5, v6}, Le/n/a/c;->d(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v6, v3}, Le/n/a/f/c;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v6, v3}, Le/n/a/f/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v6, v0}, Le/n/a/f/c;->a(Lg/a/c/a/k$d;)V

    return-void

    .line 15
    :cond_4
    iget-object v4, p0, Le/n/a/c$b;->h:Le/n/a/c;

    iget-object v5, p0, Le/n/a/c$b;->g:Le/n/a/a;

    invoke-static {v4, v5, v6}, Le/n/a/c;->a(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v6, v3}, Le/n/a/f/c;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v6, v3}, Le/n/a/f/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 18
    :cond_6
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v6, v0}, Le/n/a/f/c;->a(Lg/a/c/a/k$d;)V

    return-void

    .line 19
    :cond_7
    iget-object v4, p0, Le/n/a/c$b;->h:Le/n/a/c;

    iget-object v5, p0, Le/n/a/c$b;->g:Le/n/a/a;

    invoke-static {v4, v5, v6}, Le/n/a/c;->c(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    invoke-virtual {v6, v3}, Le/n/a/f/c;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v0, :cond_9

    .line 21
    invoke-virtual {v6, v3}, Le/n/a/f/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 22
    :cond_9
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v6, v0}, Le/n/a/f/c;->a(Lg/a/c/a/k$d;)V

    return-void

    .line 23
    :cond_a
    iget-object v4, p0, Le/n/a/c$b;->h:Le/n/a/c;

    iget-object v5, p0, Le/n/a/c$b;->g:Le/n/a/a;

    invoke-static {v4, v5, v6}, Le/n/a/c;->b(Le/n/a/c;Le/n/a/a;Le/n/a/f/f;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 24
    invoke-virtual {v6, v3}, Le/n/a/f/c;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    .line 25
    invoke-virtual {v6, v3}, Le/n/a/f/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 26
    :cond_c
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v6, v0}, Le/n/a/f/c;->a(Lg/a/c/a/k$d;)V

    return-void

    :cond_d
    if-eqz v1, :cond_e

    .line 27
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v0, v5}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 28
    :cond_e
    iget-object v0, p0, Le/n/a/c$b;->f:Le/n/a/c$i;

    invoke-virtual {v0, v3}, Le/n/a/c$i;->a(Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_3
        -0x468f3d47 -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        0x66f18c8 -> :sswitch_0
    .end sparse-switch
.end method
