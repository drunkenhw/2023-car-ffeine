package com.carffeine.carffeine.domain;

import lombok.*;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
public class ChargeStation {

    @Id
    private String stationId;

    private String stationName;

    private String companyName;

    private Boolean isParkingFree;

    private String operatingTime;

    private String detailLocation;

    @Column(scale = 7, precision = 13)
    private BigDecimal latitude;

    @Column(scale = 7, precision = 13)
    private BigDecimal longitude;

    private Boolean isPrivate;

    private String contact;

    private String stationState;

    private String privateReason;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "station_id")
    private List<Charger> chargers;

    public void setChargers(List<Charger> chargers) {
        this.chargers = chargers;
    }
}
