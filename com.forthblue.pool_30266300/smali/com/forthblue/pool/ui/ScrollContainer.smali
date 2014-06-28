.class public Lcom/forthblue/pool/ui/ScrollContainer;
.super Lcom/fruitsmobile/basket/SimpleContainer;
.source "ScrollContainer.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;
    }
.end annotation


# instance fields
.field private base_x:F

.field private bound_x1:F

.field private bound_x2:F

.field private bound_y1:F

.field private bound_y2:F

.field private current_motion_id:I

.field private double_running:Z

.field private down_x:F

.field private down_y:F

.field private ideal_pos:[F

.field private lastTimeStamp:J

.field private last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field private last_rx:F

.field private last_vx:F

.field private page_index:I

.field private page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

.field private target_pos:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    .line 9
    iput-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 12
    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    .line 16
    return-void
.end method

.method private getNearestTarget()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 117
    const v6, 0x4b189680

    .line 118
    .local v6, "xx":F
    const v4, 0x49742400

    .local v4, "temp":F
    const/4 v5, 0x0

    .line 119
    .local v5, "temp_target":F
    const/4 v1, 0x0

    .line 120
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    array-length v3, v7

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 121
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 122
    .local v2, "len":F
    cmpg-float v7, v2, v4

    if-gez v7, :cond_0

    .line 123
    move v4, v2

    .line 124
    move v1, v0

    .line 125
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v5, v7

    .line 127
    :cond_0
    iget v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_vx:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v7, v7

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 128
    iget v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget-object v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v8, v8, v0

    add-float v2, v7, v8

    .line 129
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 130
    move v6, v2

    .line 131
    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 132
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v7, v7

    iput v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    .line 120
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_vx:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v7, v7

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 135
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v7, v7

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    sub-float v2, v7, v8

    .line 136
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 137
    move v6, v2

    .line 138
    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 139
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v7, v7, v0

    neg-float v7, v7

    iput v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    goto :goto_1

    .line 143
    .end local v2    # "len":F
    :cond_3
    const v7, 0x49742400

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    .line 144
    iput v5, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    .line 145
    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 147
    :cond_4
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    if-eqz v7, :cond_5

    .line 148
    iget-object v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    invoke-interface {v7, p0, v8}, Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;->pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V

    .line 150
    :cond_5
    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    return v0
.end method

.method public gotoNextPage()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    const/4 v0, 0x1

    .line 75
    .local v0, "flag":Z
    iput-boolean v3, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 76
    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 77
    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    iget-object v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    array-length v1, v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 79
    const/4 v0, 0x0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    aget v1, v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    .line 82
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    invoke-interface {v1, p0, v2}, Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;->pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V

    .line 85
    :cond_1
    return v0
.end method

.method public gotoPrePage()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "flag":Z
    iput-boolean v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 95
    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 96
    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    if-gez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 98
    const/4 v0, 0x0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    aget v1, v1, v2

    neg-float v1, v1

    iput v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    .line 101
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    invoke-interface {v1, p0, v2}, Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;->pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V

    .line 104
    :cond_1
    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/ui/ScrollContainer;->init(I)V

    .line 42
    return-void
.end method

.method public init(I)V
    .locals 1
    .param p1, "page_index"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    .line 46
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v0, v0, p1

    neg-float v0, v0

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    .line 47
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    aget v0, v0, p1

    neg-float v0, v0

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 49
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/ScrollContainer;->setNeedRecommit()V

    .line 50
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;->pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V

    .line 53
    :cond_0
    return-void
.end method

.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 64
    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_x1:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_x2:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_y1:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_y2:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMotionBegin(IFF)V
    .locals 6
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 158
    iget v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iput p1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    .line 161
    iget-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v4, p1}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 163
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 165
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 166
    iput p2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->base_x:F

    .line 167
    iput p2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_x:F

    .line 168
    iput p3, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_y:F

    .line 169
    const/4 v4, 0x0

    iput v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_vx:F

    .line 170
    iget v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iput v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_rx:F

    .line 172
    iget v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    sub-float v2, p2, v4

    .line 173
    .local v2, "xx":F
    iget v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centery:F

    sub-float v3, p3, v4

    .line 174
    .local v3, "yy":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v4, v4, v1

    instance-of v4, v4, Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v0, v4, v1

    check-cast v0, Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 177
    .local v0, "child":Lcom/fruitsmobile/basket/interfaces/Motionable;
    invoke-interface {v0, v2, v3}, Lcom/fruitsmobile/basket/interfaces/Motionable;->isInside(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    invoke-interface {v0, p1, v2, v3}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionBegin(IFF)V

    .line 179
    iput-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    goto :goto_0

    .line 174
    .end local v0    # "child":Lcom/fruitsmobile/basket/interfaces/Motionable;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onMotionCancel(I)V
    .locals 1
    .param p1, "motionid"    # I

    .prologue
    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 235
    invoke-direct {p0}, Lcom/forthblue/pool/ui/ScrollContainer;->getNearestTarget()V

    .line 236
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v0, p1}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 10
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v7, 0x40800000

    .line 188
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    if-eq p1, v6, :cond_0

    .line 219
    :goto_0
    return-void

    .line 191
    :cond_0
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_x:F

    sub-float v0, p2, v6

    .line 192
    .local v0, "absx":F
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_y:F

    sub-float v1, p3, v6

    .line 194
    .local v1, "absy":F
    iput p2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_x:F

    .line 195
    iput p3, p0, Lcom/forthblue/pool/ui/ScrollContainer;->down_y:F

    .line 199
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    sub-float v4, p2, v6

    .line 200
    .local v4, "xx":F
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centery:F

    sub-float v5, p3, v6

    .line 202
    .local v5, "yy":F
    iget-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v6, v4, v5}, Lcom/fruitsmobile/basket/interfaces/Motionable;->isInside(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 203
    :cond_1
    iget-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v6, p1}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 204
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 206
    :cond_2
    iget-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-nez v6, :cond_4

    .line 207
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->base_x:F

    sub-float v7, p2, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    .line 208
    iput p2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->base_x:F

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->lastTimeStamp:J

    sub-long v2, v6, v8

    .line 210
    .local v2, "timeSpan":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    .line 211
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_vx:F

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget v8, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_rx:F

    sub-float/2addr v7, v8

    long-to-float v8, v2

    div-float/2addr v7, v8

    const v8, 0x3ecccccd

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_vx:F

    .line 213
    :cond_3
    iget v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iput v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_rx:F

    .line 214
    iget-wide v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->lastTimeStamp:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->lastTimeStamp:J

    .line 215
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/ScrollContainer;->setNeedRecommit()V

    goto :goto_0

    .line 217
    .end local v2    # "timeSpan":J
    :cond_4
    iget-object v6, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v6, p1, v4, v5}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionMove(IFF)V

    goto :goto_0
.end method

.method public onMotionOver(IFF)V
    .locals 3
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->current_motion_id:I

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 225
    invoke-direct {p0}, Lcom/forthblue/pool/ui/ScrollContainer;->getNearestTarget()V

    .line 226
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->last_motion_target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centery:F

    sub-float v2, p3, v2

    invoke-interface {v0, p1, v1, v2}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionOver(IFF)V

    .line 229
    :cond_0
    return-void
.end method

.method public setBound(FFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_x1:F

    .line 24
    iput p3, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_x2:F

    .line 25
    iput p2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_y1:F

    .line 26
    iput p4, p0, Lcom/forthblue/pool/ui/ScrollContainer;->bound_y2:F

    .line 27
    return-void
.end method

.method public setIdealPos([F)V
    .locals 0
    .param p1, "pos"    # [F

    .prologue
    .line 19
    iput-object p1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->ideal_pos:[F

    .line 20
    return-void
.end method

.method public setNeedRecommit()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v1, v1, v0

    check-cast v1, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    check-cast v1, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public setPageIndexChangeListener(Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;)V
    .locals 1
    .param p1, "page_index_change_listener"    # Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index_change_listener:Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->page_index:I

    invoke-interface {p1, p0, v0}, Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;->pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V

    .line 114
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "timeSpan"    # J

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/SimpleContainer;->tick(J)V

    .line 31
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget v2, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    .line 33
    iget v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->centerx:F

    iget v1, p0, Lcom/forthblue/pool/ui/ScrollContainer;->target_pos:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/ScrollContainer;->double_running:Z

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/ScrollContainer;->setNeedRecommit()V

    .line 38
    :cond_1
    return-void
.end method
